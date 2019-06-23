provider "google" {
  credentials = "${file("./credentials.json")}"
  project = "${var.gcloud_project}"
  region  = "${var.gcloud_region}"
}