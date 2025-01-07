namespace Devantler.KubectlCLI.Tests.KubectlTests;

/// <summary>
/// Tests for the RunAsync method.
/// </summary>
public class RunAsyncTests
{
  /// <summary>
  /// Tests that the binary can return the version of the kubectl CLI command.
  /// </summary>
  /// <returns></returns>
  [Fact]
  public async Task RunAsync_Version_ReturnsVersion()
  {
    // Act
    var (exitCode, message) = await Kubectl.RunAsync(["version", "--client"]);

    // Assert
    Assert.Equal(0, exitCode);
    // Client Version: v1.32.0
    Assert.Matches(@"^Client Version: v\d+\.\d+\.\d+$", message.Split(Environment.NewLine).First());
  }
}
