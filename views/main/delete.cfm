<cfoutput>
    <!-- Main Container -->
    <div class="container mt-5 text-center">
        <!-- Content Section -->
        <div class="content-section bg-light p-4 rounded">
            <h2 class="text-dark">Manage Data</h2>
            <p class="text-muted">
                You are about to delete critical data. Please confirm that you want to proceed with this action. 
                This process is irreversible, so be sure before making the decision.
            </p>

            <!-- Warning Alert -->
            <div class="alert alert-warning mt-4">
                <i class="fas fa-exclamation-triangle"></i> Deleting this data will remove it permanently from the system.
            </div>

            <!-- Delete Data Button -->
            <button type="button" class="btn btn-danger btn-lg" data-bs-toggle="modal" data-bs-target="##deleteConfirmationModal">
                <i class="fas fa-trash-alt"></i> Delete Data
            </button>
        </div>

        <!-- Bootstrap Modal for Deletion Confirmation -->
        <div class="modal fade" id="deleteConfirmationModal" tabindex="-1" aria-labelledby="deleteConfirmationLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content bg-dark text-white">
                    <div class="modal-header">
                        <h5 class="modal-title" id="deleteConfirmationLabel">Confirm Deletion</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure you want to delete this data? This action cannot be undone.</p>
                    </div>
                    <div class="modal-footer">
                        <cfform name="deleteForm" action="#event.buildLink("Main/DelData")#">
                            <cfinput type="hidden" name="del" value="#del#">
                            <cfinput type="hidden" name="npid" value="#npid#">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                            <cfinput type="submit" name="btnSubmit" value="Delete" class="btn btn-danger">
                        </cfform>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</cfoutput>
