.class public Lcom/agc/model/LutFileModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private filelink:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private height:Ljava/lang/Integer;

.field private width:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/model/LutFileModel;->filename:Ljava/lang/String;

    iput-object p2, p0, Lcom/agc/model/LutFileModel;->filelink:Ljava/lang/String;

    iput-object p3, p0, Lcom/agc/model/LutFileModel;->width:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/agc/model/LutFileModel;->height:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "filename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/model/LutFileModel;->filename:Ljava/lang/String;

    const-string v0, "filelink"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/model/LutFileModel;->filelink:Ljava/lang/String;

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/model/LutFileModel;->width:Ljava/lang/Integer;

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/model/LutFileModel;->height:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getFilelink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutFileModel;->filelink:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutFileModel;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutFileModel;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWidth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutFileModel;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public setFilelink(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutFileModel;->filelink:Ljava/lang/String;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutFileModel;->filename:Ljava/lang/String;

    return-void
.end method

.method public setHeight(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutFileModel;->height:Ljava/lang/Integer;

    return-void
.end method

.method public setWidth(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutFileModel;->width:Ljava/lang/Integer;

    return-void
.end method
