.class Lcom/agc/glide/util/GlideSuppliers$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/util/GlideSuppliers;->memorize(Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;)Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$supplier:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;


# direct methods
.method public constructor <init>(Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/util/GlideSuppliers$1;->val$supplier:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/agc/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/util/GlideSuppliers$1;->val$supplier:Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/agc/glide/util/GlideSuppliers$1;->instance:Ljava/lang/Object;

    return-object v0
.end method
