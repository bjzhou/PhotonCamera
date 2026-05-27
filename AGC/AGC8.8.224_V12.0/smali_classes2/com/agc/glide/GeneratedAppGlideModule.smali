.class abstract Lcom/agc/glide/GeneratedAppGlideModule;
.super Lcom/agc/glide/module/AppGlideModule;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getExcludedModuleClasses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getRequestManagerFactory()Lcom/agc/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
