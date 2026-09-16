workspace "SafeBus - Software Architecture" "Architecture proposal for US01-US24: context, containers, components and pilot deployment." {
    !impliedRelationships false

    model {
        driver = person "Public Transport Driver" "Validates shifts, shares bus location and triggers direct priority emergencies."
        passenger = person "Registered Passenger" "Registers with DNI and face photo, starts a journey, checks bus alerts and submits evidence."
        company = person "Company Representative / Fleet Supervisor" "Evaluates the service, monitors the fleet and approves eligible passenger emergencies."

        counting = softwareSystem "Passenger Counting Source" "Registered sensor adapter or explicitly identified simulator; supplies ordered entry and exit events." {
            tags "External"
        }

        safebus = softwareSystem "SafeBus" "Mobile transport safety: direct driver emergencies, passenger requests with company approval, journey tracking and fleet occupancy." {
            landing = container "Landing Page" "Explains the service and submits company contact requests." "HTML5, CSS3, JavaScript"
            android = container "Native Android App" "Role-based safety, GPS, QR and offline queue; local journey exit check: over 100 m for 60 s." "Kotlin, Jetpack Compose, SQLite" {
                tags "Mobile"
            }
            flutter = container "Cross-Platform App" "Equivalent role-based flows and offline queue; local journey exit check: over 100 m for 60 s." "Flutter, Dart, Drift / SQLite" {
                tags "Mobile"
            }
            api = container "SafeBus API" "One modular backend for access, fleet, journeys, occupancy and differentiated emergencies." "Java, Spring Boot, REST, WebSocket" {
                iam = component "Identity & Access Management" "Accounts, credentials, roles and authorization by company and ownership." "Spring Boot module"
                fleet = component "Fleet & Workforce Management" "Companies, drivers, buses, capacities and shift assignments." "Spring Boot module"
                trip = component "Trip & Location Tracking" "Driver shifts and current bus position with capture time and accuracy." "Spring Boot module"
                journey = component "Passenger Journey & Occupancy" "DNI and face profile, QR association, journey end and company-only occupancy." "Spring Boot module"
                safety = component "Safety Case Management" "Driver: direct Critical. Passenger: evidence, 3 accounts / 5 min, approval then High; bus alert summaries." "Spring Boot module"
                contact = component "Company Contact Intake" "Validates and records public contact requests from the landing page." "Spring REST controller and application service"
                events = component "Integration Events & Live Updates" "Durable event delivery, duplicate handling and company-scoped WebSocket updates." "Spring AMQP, Spring WebSocket"
            }
            database = container "Operational Database" "Accounts, assignments, journeys, bus positions, counts, cases, decisions and contact requests." "PostgreSQL" {
                tags "Database"
            }
            images = container "Private Image Store" "Registration face photos and incident evidence; accessed only through authorized API operations." "Private filesystem on persistent volume" {
                tags "Database"
            }
            broker = container "Integration Message Broker" "Carries persisted integration events between backend modules." "RabbitMQ" {
                tags "Queue"
            }
        }

        // Context relationships.
        driver -> safebus "Validates the shift and activates direct emergencies"
        passenger -> safebus "Registers, checks bus alerts and submits panic requests"
        company -> safebus "Monitors operations and decides passenger approvals"
        safebus -> counting "Uses occupancy events supplied by" "JSON / HTTPS"

        // Container relationships.
        company -> landing "Reads service information and requests contact" "HTTPS"
        driver -> android "Uses driver functions"
        passenger -> android "Uses passenger functions"
        company -> android "Uses supervisor functions"
        driver -> flutter "Uses equivalent driver functions"
        passenger -> flutter "Uses equivalent passenger functions"
        company -> flutter "Uses equivalent supervisor functions"
        landing -> api "Submits company contact requests" "JSON / HTTPS" {
            tags "PublicAPI"
        }
        android -> api "Uses REST; subscribes to live updates" "HTTPS / WSS" {
            tags "PublicAPI"
        }
        flutter -> api "Uses REST; subscribes to live updates" "HTTPS / WSS" {
            tags "PublicAPI"
        }
        counting -> api "Sends ordered entry / exit events and heartbeats" "JSON / HTTPS" {
            tags "PublicAPI"
        }
        api -> database "Reads and writes operational records" "JDBC / TLS"
        api -> images "Reads and writes authorized photos" "Filesystem API"
        api -> broker "Publishes and consumes integration events" "AMQP / TLS"

        // Components inside the single API container.
        android -> iam "Registers and authenticates" "JSON / HTTPS"
        android -> fleet "Manages assignments and capacities" "JSON / HTTPS"
        android -> trip "Starts shifts and exchanges bus location" "JSON / HTTPS"
        android -> journey "Verifies QR, ends journeys and queries permitted occupancy" "JSON / HTTPS"
        android -> safety "Submits and reviews safety reports" "HTTPS / multipart"
        android -> events "Subscribes to company updates" "WSS"
        landing -> contact "Submits a contact request" "JSON / HTTPS"
        counting -> journey "Submits ordered occupancy events" "JSON / HTTPS"
        fleet -> iam "Checks identity and authorization" "In-process interface"
        trip -> iam "Checks identity and authorization" "In-process interface"
        journey -> iam "Checks identity and authorization" "In-process interface"
        safety -> iam "Checks identity and authorization" "In-process interface"
        events -> iam "Checks subscription scope" "In-process interface"
        trip -> fleet "Validates assigned driver, bus and route" "In-process interface"
        journey -> trip "Verifies active shift and current bus data" "In-process interface"
        journey -> fleet "Reads registered bus capacity" "In-process interface"
        safety -> journey "Checks journey ownership and bus association" "In-process interface"
        safety -> trip "Reads latest available bus position" "In-process interface"
        iam -> database "Persists accounts and roles" "JDBC"
        fleet -> database "Persists fleet and assignments" "JDBC"
        trip -> database "Persists shifts and bus locations" "JDBC"
        journey -> database "Persists profiles, journeys and counts" "JDBC"
        safety -> database "Persists requests, decisions and emergencies" "JDBC"
        contact -> database "Persists contact requests" "JDBC"
        journey -> images "Stores private registration photos" "Filesystem API"
        safety -> images "Stores private incident evidence" "Filesystem API"
        iam -> events "Exchanges account lifecycle events" "In-process interface"
        trip -> events "Publishes shift and location events" "In-process interface"
        journey -> events "Exchanges journey lifecycle events" "In-process interface"
        safety -> events "Exchanges review and emergency events" "In-process interface"
        events -> database "Reads pending events and records delivery" "JDBC"
        events -> broker "Publishes and consumes durable events" "AMQP / TLS"

        pilot = deploymentEnvironment "Pilot" {
            deploymentNode "Android Devices" "Driver, passenger and supervisor devices; GPS and camera belong to the device." "Android" {
                androidInstance = containerInstance android
            }
            deploymentNode "Cross-Platform Devices" "Alternative client installation for the same roles." "Android / iOS with Flutter" {
                flutterInstance = containerInstance flutter
            }
            deploymentNode "Company Browser" "Loads the public landing page and submits its contact form." "Web browser" {
                landingInstance = containerInstance landing
            }
            deploymentNode "Counting Device / Test Workstation" "Hosts the registered adapter or a clearly labelled simulator." "Sensor adapter / simulator" {
                countingInstance = softwareSystemInstance counting
            }
            deploymentNode "Pilot Host" "Proposed single-server pilot; public TLS entry and private backend services." "Linux" {
                web = infrastructureNode "HTTPS Entry & Static Hosting" "Serves landing assets and routes /api and /ws to the backend." "Nginx / TLS"
                deploymentNode "API Runtime" "One backend process exposing REST and WebSocket." "Java / Spring Boot" {
                    apiInstance = containerInstance api
                }
                deploymentNode "Database Runtime" "Accessible only by backend services." "PostgreSQL" {
                    containerInstance database
                }
                deploymentNode "Messaging Runtime" "Private integration-event transport." "RabbitMQ" {
                    containerInstance broker
                }
                deploymentNode "Persistent Photo Volume" "Mounted only for the API; not served as a public static directory." "Private filesystem" {
                    containerInstance images
                }
                web -> apiInstance "Forwards API and WebSocket traffic" "HTTP / WS on loopback"
            }
            androidInstance -> web "Uses REST and live updates" "HTTPS / WSS"
            flutterInstance -> web "Uses REST and live updates" "HTTPS / WSS"
            landingInstance -> web "Loads assets and submits contact requests" "HTTPS"
            countingInstance -> web "Sends counting events and heartbeats" "HTTPS"
        }
    }

    views {
        systemContext safebus "Context" {
            include *
            autoLayout lr
            title "SafeBus - System Context"
        }
        container safebus "Containers" {
            include *
            autoLayout lr
            title "SafeBus - Containers"
        }
        component api "Components" {
            include *
            autoLayout lr
            title "SafeBus API - Components (native client shown; Flutter uses the same contracts)"
        }
        deployment * pilot "Deployment" {
            include *
            exclude "relationship.tag==PublicAPI"
            autoLayout lr
            title "SafeBus - Proposed Pilot Deployment"
        }
        styles {
            element "Element" {
                color #ffffff
                background #438dd5
                fontSize 22
            }
            element "Person" {
                shape Person
                background #08427b
            }
            element "Software System" {
                background #1168bd
            }
            element "External" {
                background #777777
            }
            element "Mobile" {
                shape MobileDevicePortrait
            }
            element "Database" {
                shape Cylinder
            }
            element "Queue" {
                shape Pipe
            }
            element "Component" {
                background #85bbf0
                color #102a43
            }
            element "Deployment Node" {
                background #ffffff
                color #243b53
            }
            relationship "Relationship" {
                color #52606d
                fontSize 18
            }
        }
    }
}
