.class public Lcom/Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public configFilename:Ljava/lang/String;

.field public configID:Ljava/lang/String;

.field public configNickname:Ljava/lang/String;

.field public faceCount:I

.field public focalLength:F

.field public frameCount:I

.field public hasGainMap:Z

.field public lutFilename:Ljava/lang/String;

.field public lutID:Ljava/lang/String;

.field public mCameraID:Ljava/lang/String;

.field public profileID:Ljava/lang/String;

.field public profileName:Ljava/lang/String;

.field public saturation:F

.field public shadows:F

.field public sharpness:F

.field public whiteLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3ff

    iput v0, p0, Lcom/Parameters;->whiteLevel:I

    return-void
.end method

.method private FltFormat(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%.2f"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/Globals;->GcamVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/Version;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Build()Lcom/Parameters;
    .locals 2

    new-instance v0, Lcom/Parameters;

    invoke-direct {v0}, Lcom/Parameters;-><init>()V

    iget v1, p0, Lcom/Parameters;->whiteLevel:I

    iput v1, v0, Lcom/Parameters;->whiteLevel:I

    iget-boolean v1, p0, Lcom/Parameters;->hasGainMap:Z

    iput-boolean v1, v0, Lcom/Parameters;->hasGainMap:Z

    iget v1, p0, Lcom/Parameters;->frameCount:I

    iput v1, v0, Lcom/Parameters;->frameCount:I

    iget-object v1, p0, Lcom/Parameters;->mCameraID:Ljava/lang/String;

    iput-object v1, v0, Lcom/Parameters;->mCameraID:Ljava/lang/String;

    iget v1, p0, Lcom/Parameters;->saturation:F

    iput v1, v0, Lcom/Parameters;->saturation:F

    iget v1, p0, Lcom/Parameters;->shadows:F

    iput v1, v0, Lcom/Parameters;->shadows:F

    iget v1, p0, Lcom/Parameters;->sharpness:F

    iput v1, v0, Lcom/Parameters;->sharpness:F

    iget v1, p0, Lcom/Parameters;->focalLength:F

    iput v1, v0, Lcom/Parameters;->focalLength:F

    iget-object v1, p0, Lcom/Parameters;->lutID:Ljava/lang/String;

    iput-object v1, v0, Lcom/Parameters;->lutID:Ljava/lang/String;

    iget-object v1, p0, Lcom/Parameters;->lutFilename:Ljava/lang/String;

    iput-object v1, v0, Lcom/Parameters;->lutFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/Parameters;->configID:Ljava/lang/String;

    iput-object v1, v0, Lcom/Parameters;->configID:Ljava/lang/String;

    iget-object v1, p0, Lcom/Parameters;->configFilename:Ljava/lang/String;

    iput-object v1, v0, Lcom/Parameters;->configFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/Parameters;->configNickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/Parameters;->configNickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/Parameters;->profileID:Ljava/lang/String;

    iput-object v1, v0, Lcom/Parameters;->profileID:Ljava/lang/String;

    iget-object v1, p0, Lcom/Parameters;->profileName:Ljava/lang/String;

    iput-object v1, v0, Lcom/Parameters;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/Parameters;->mCameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFrameCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/Parameters;->frameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nconfigID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/Parameters;->configID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlutID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/Parameters;->lutID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlutFilename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/Parameters;->lutFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nconfigFilename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/Parameters;->configFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nconfigNickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/Parameters;->configNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nprofileID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/Parameters;->profileID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nprofileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/Parameters;->profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Parameters;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
