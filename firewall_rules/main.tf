# module.firewall_rules.google_compute_firewall.rules_ingress_egress["egress-allow-outbound-https"]:
resource "google_compute_firewall" "rules_ingress_egress" {
    description        = "example rule"
    destination_ranges = [
        "1.1.1.1/32",
    ]
    direction          = "EGRESS"
    disabled           = false
    name               = "egress-allow-outbound-https"
    network            = var.vpc_name
    priority           = 50
    project            = var.project_id
    source_ranges      = [
        "10.0.0.0/8",
    ]

    allow {
        ports    = [
            "443",
        ]
        protocol = "tcp"
    }
}

# module.firewall_rules.google_compute_firewall.rules_ingress_egress["egress-within-subnets"]:
resource "google_compute_firewall" "rules_ingress_egress" {
    description        = "example rule"
    destination_ranges = [
        "10.0.0.0/8",
    ]
    direction          = "EGRESS"
    disabled           = false
    name               = "egress-within-subnets"
    network            = var.vpc_name
    priority           = 100
    project            = var.project_id
    source_ranges      = [
        "10.0.0.0/8",
    ]

    allow {
        ports    = []
        protocol = "icmp"
    }
    allow {
        ports    = []
        protocol = "tcp"
    }
    allow {
        ports    = []
        protocol = "udp"
    }
}

# module.firewall_rules.google_compute_firewall.rules_ingress_egress["ingress-allow-sample-rule"]:
resource "google_compute_firewall" "rules_ingress_egress" {
    description        = "just an example"
    destination_ranges = [
        "10.0.0.0/8",
    ]
    direction          = "INGRESS"
    disabled           = false
    name               = "ingress-allow-sample-rule"
    network            = var.vpc_name
    priority           = 50
    project            = var.project_id
    source_ranges      = [
        "103.75.11.19/32",
    ]

    allow {
        ports    = [
            "8080",
        ]
        protocol = "tcp"
    }
    allow {
        ports    = []
        protocol = "udp"
    }
}

# module.firewall_rules.google_compute_firewall.rules_ingress_egress["ingress-icmp"]:
resource "google_compute_firewall" "rules_ingress_egress" {
    description        = "just an example"
    destination_ranges = [
        "10.0.0.18/32",
    ]
    direction          = "INGRESS"
    disabled           = false
    name               = "ingress-icmp"
    network            = var.vpc_name
    priority           = 100
    project            = var.project_id
    source_ranges      = [
        "0.0.0.0/0",
    ]

    allow {
        ports    = []
        protocol = "icmp"
    }
}

# module.firewall_rules.google_compute_firewall.rules_ingress_egress["ingress-within-subnets"]:
resource "google_compute_firewall" "rules_ingress_egress" {
    description        = "example rule"
    destination_ranges = [
        "10.0.0.0/8",
    ]
    direction          = "INGRESS"
    disabled           = false
    name               = "ingress-within-subnets"
    network            = var.vpc_name
    priority           = 150
    project            = var.project_id
    source_ranges      = [
        "10.0.0.0/8",
    ]

    allow {
        ports    = []
        protocol = "icmp"
    }
    allow {
        ports    = []
        protocol = "tcp"
    }
    allow {
        ports    = []
        protocol = "udp"
    }
}
