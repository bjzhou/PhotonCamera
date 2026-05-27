.class Lcom/agc/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/Glide$RequestOptionsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/GlideBuilder;


# direct methods
.method public constructor <init>(Lcom/agc/glide/GlideBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/GlideBuilder$1;->this$0:Lcom/agc/glide/GlideBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    return-object v0
.end method
