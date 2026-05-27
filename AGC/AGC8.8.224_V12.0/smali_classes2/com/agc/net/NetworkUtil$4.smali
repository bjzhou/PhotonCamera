.class Lcom/agc/net/NetworkUtil$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/net/NetworkUtil;->getLUTInfo(Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

.field public final synthetic val$lutId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$4;->val$lutId:Ljava/lang/String;

    iput-object p2, p0, Lcom/agc/net/NetworkUtil$4;->val$listener:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/agc/net/NetworkUtil$DownloadInfoListener;Lcom/agc/model/LutListModel$LutModel;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/agc/net/NetworkUtil$DownloadInfoListener;->onDownloadSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$run$1(Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/agc/net/NetworkUtil$DownloadInfoListener;->onDownloadError()V

    return-void
.end method

.method static synthetic lambda$run$2(Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/agc/net/NetworkUtil$DownloadInfoListener;->onDownloadError()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/util/SpUtils;->getInstace(Landroid/content/Context;)Lcom/agc/util/SpUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LUT_INFO_JSON_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/agc/net/NetworkUtil$4;->val$lutId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/agc/util/SpUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$4;->val$listener:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    new-instance v3, Lcom/agc/model/LutListModel$LutModel;

    invoke-direct {v3, v1}, Lcom/agc/model/LutListModel$LutModel;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Lcom/agc/net/NetworkUtil$DownloadInfoListener;->onDownloadSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :try_start_1
    const-string v0, "lut"

    const-string v1, "lut_info"

    invoke-static {v0, v1}, Lcom/agc/net/NetworkUtil;->buildQueryParameters(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "lutid"

    iget-object v3, p0, Lcom/agc/net/NetworkUtil$4;->val$lutId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/net/AesEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://gapi.agccam.com"

    invoke-static {}, Lcom/agc/net/NetworkUtil;->agcHeader()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/agc/net/NetworkUtil;->doMapPost(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/agc/model/ResultModel;

    invoke-direct {v0}, Lcom/agc/model/ResultModel;-><init>()V

    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/agc/model/ResultModel;->setCode(I)V

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/agc/model/ResultModel;->setMsg(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/agc/model/ResultModel;->getCode()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/util/SpUtils;->getInstace(Landroid/content/Context;)Lcom/agc/util/SpUtils;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/net/NetworkUtil$4;->val$lutId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/agc/util/SpUtils;->save(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/agc/model/LutListModel$LutModel;

    invoke-direct {v1, v0}, Lcom/agc/model/LutListModel$LutModel;-><init>(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$4;->val$listener:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/agc/net/NetworkUtil;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda0;-><init>(Lcom/agc/net/NetworkUtil$DownloadInfoListener;Lcom/agc/model/LutListModel$LutModel;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/net/NetworkUtil$4;->val$listener:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/agc/net/NetworkUtil;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda1;-><init>(Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V

    :goto_0
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$4;->val$listener:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/agc/net/NetworkUtil;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda2;-><init>(Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method
