.class public Lcom/agc/model/LutListModel$LutModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/model/LutListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LutModel"
.end annotation


# static fields
.field public static final LINK_AGC_PLAYER:I = 0x1

.field public static final LINK_TOOLKIT:I


# instance fields
.field private createTime:Ljava/lang/Integer;

.field private createUser:Ljava/lang/String;

.field private createUserAvatar:Ljava/lang/String;

.field private createUserNickname:Ljava/lang/String;

.field private datetime:Ljava/lang/String;

.field private favorited:Ljava/lang/Boolean;

.field private filename:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private image:Lcom/agc/model/LutFileModel;

.field private imageUrl:Ljava/lang/String;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/model/LutFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private isAgcToolLink:I

.field private isUser:Ljava/lang/Boolean;

.field private liked:Ljava/lang/Boolean;

.field private lutfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/model/LutFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private processed:Ljava/lang/Boolean;

.field public showGuide:Ljava/lang/Boolean;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    const-string v0, "create_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setCreateTime(Ljava/lang/Integer;)V

    const-string v0, "create_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setCreateUser(Ljava/lang/String;)V

    const-string v0, "datetime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setDatetime(Ljava/lang/String;)V

    const-string v0, "favorited"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setFavorited(Ljava/lang/Boolean;)V

    const-string v0, "filename"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setFilename(Ljava/lang/String;)V

    const-string v0, "create_user_avatar"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setCreateUserAvatar(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setId(Ljava/lang/Integer;)V

    const-string v0, "create_user_nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setCreateUserNickname(Ljava/lang/String;)V

    const-string v0, "liked"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setLiked(Ljava/lang/Boolean;)V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setName(Ljava/lang/String;)V

    const-string v0, "processed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setProcessed(Ljava/lang/Boolean;)V

    new-instance v0, Lcom/agc/model/LutFileModel;

    const-string v1, "image"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/agc/model/LutFileModel;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setImage(Lcom/agc/model/LutFileModel;)V

    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Lcom/agc/model/LutFileModel;

    invoke-direct {v5, v4}, Lcom/agc/model/LutFileModel;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/agc/model/LutListModel$LutModel;->setImages(Ljava/util/List;)V

    const-string v0, "lutfiles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/agc/model/LutFileModel;

    invoke-direct {v3, v1}, Lcom/agc/model/LutFileModel;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/agc/model/LutListModel$LutModel;->setLutfiles(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public fromAds(Lcom/agc/model/AdsModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/agc/model/AdsModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/agc/model/AdsModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/agc/model/AdsModel;->getImage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->imageUrl:Ljava/lang/String;

    const/4 p1, -0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->id:Ljava/lang/Integer;

    const/4 p1, 0x1

    iput p1, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    return-void
.end method

.method public getCreateTime()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->createTime:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreateUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->createUser:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUserAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->createUserAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateUserNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->createUserNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getDatetime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadLutFile()Lcom/agc/model/LutFileModel;
    .locals 5

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->lutfiles:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/agc/model/LutListModel$LutModel;->lutfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/agc/model/LutListModel$LutModel;->lutfiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/model/LutFileModel;

    invoke-virtual {v2}, Lcom/agc/model/LutFileModel;->getFilelink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getFavorited()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->favorited:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImage()Lcom/agc/model/LutFileModel;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->image:Lcom/agc/model/LutFileModel;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/model/LutFileModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->images:Ljava/util/List;

    return-object v0
.end method

.method public getIsAgcToolLink()I
    .locals 1

    iget v0, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    return v0
.end method

.method public getLiked()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->liked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLutfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/agc/model/LutFileModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->lutfiles:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->processed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->isUser:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isAgcLink()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isAgcPlayerLink()Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isAgcToolkitLink()Ljava/lang/Boolean;
    .locals 1

    iget v0, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->createTime:Ljava/lang/Integer;

    return-void
.end method

.method public setCreateUser(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->createUser:Ljava/lang/String;

    return-void
.end method

.method public setCreateUserAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->createUserAvatar:Ljava/lang/String;

    return-void
.end method

.method public setCreateUserNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->createUserNickname:Ljava/lang/String;

    return-void
.end method

.method public setDatetime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->datetime:Ljava/lang/String;

    return-void
.end method

.method public setFavorited(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->favorited:Ljava/lang/Boolean;

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->filename:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setImage(Lcom/agc/model/LutFileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->image:Lcom/agc/model/LutFileModel;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->imageUrl:Ljava/lang/String;

    return-void
.end method

.method public setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/model/LutFileModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->images:Ljava/util/List;

    return-void
.end method

.method public setLiked(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->liked:Ljava/lang/Boolean;

    return-void
.end method

.method public setLutfiles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/model/LutFileModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->lutfiles:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setProcessed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->processed:Ljava/lang/Boolean;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->url:Ljava/lang/String;

    return-void
.end method

.method public setUser(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/model/LutListModel$LutModel;->isUser:Ljava/lang/Boolean;

    return-void
.end method

.method public toAgcPlayer()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    const-string v0, "AGC Player"

    iput-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->name:Ljava/lang/String;

    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->id:Ljava/lang/Integer;

    return-void
.end method

.method public toAgcToolLink()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/model/LutListModel$LutModel;->isAgcToolLink:I

    sget-object v0, Lcom/agc/util/ContentProviderUtils;->INSTALLED_AGC_TOOLKIT_PRO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/agc/util/ContentProviderUtils;->INSTALLED_AGC_TOOLKIT_BASIC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Toolkit"

    goto :goto_0

    :cond_0
    const-string v0, "Toolkit Pro"

    :goto_0
    iput-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->name:Ljava/lang/String;

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/model/LutListModel$LutModel;->id:Ljava/lang/Integer;

    return-void
.end method
