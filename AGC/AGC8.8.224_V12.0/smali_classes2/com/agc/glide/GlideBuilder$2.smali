.class Lcom/agc/glide/GlideBuilder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/Glide$RequestOptionsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/GlideBuilder;->setDefaultRequestOptions(Lcom/agc/glide/request/RequestOptions;)Lcom/agc/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/GlideBuilder;

.field final synthetic val$requestOptions:Lcom/agc/glide/request/RequestOptions;


# direct methods
.method public constructor <init>(Lcom/agc/glide/GlideBuilder;Lcom/agc/glide/request/RequestOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder$2;->this$0:Lcom/agc/glide/GlideBuilder;

    iput-object p2, p0, Lcom/agc/glide/GlideBuilder$2;->val$requestOptions:Lcom/agc/glide/request/RequestOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/GlideBuilder$2;->val$requestOptions:Lcom/agc/glide/request/RequestOptions;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    :goto_0
    return-object v0
.end method
