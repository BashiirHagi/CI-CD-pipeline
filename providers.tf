provider "google" {
  project     = "gcp-lon"
  region      = "europe-west1"
  credentials = file("/tmp/credentials.json")
}

