.class Lcom/agc/glide/RegistryFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/RegistryFactory;->lazilyCreateAndInitializeRegistry(Lcom/agc/glide/Glide;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)Lcom/agc/glide/util/GlideSuppliers$GlideSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/util/GlideSuppliers$GlideSupplier<",
        "Lcom/agc/glide/Registry;",
        ">;"
    }
.end annotation


# instance fields
.field private isInitializing:Z

.field final synthetic val$annotationGeneratedModule:Lcom/agc/glide/module/AppGlideModule;

.field final synthetic val$glide:Lcom/agc/glide/Glide;

.field final synthetic val$manifestModules:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/agc/glide/Glide;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/RegistryFactory$1;->val$glide:Lcom/agc/glide/Glide;

    iput-object p2, p0, Lcom/agc/glide/RegistryFactory$1;->val$manifestModules:Ljava/util/List;

    iput-object p3, p0, Lcom/agc/glide/RegistryFactory$1;->val$annotationGeneratedModule:Lcom/agc/glide/module/AppGlideModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/agc/glide/Registry;
    .locals 4

    iget-boolean v0, p0, Lcom/agc/glide/RegistryFactory$1;->isInitializing:Z

    if-nez v0, :cond_0

    const-string v0, "Glide registry"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/RegistryFactory$1;->isInitializing:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/RegistryFactory$1;->val$glide:Lcom/agc/glide/Glide;

    iget-object v2, p0, Lcom/agc/glide/RegistryFactory$1;->val$manifestModules:Ljava/util/List;

    iget-object v3, p0, Lcom/agc/glide/RegistryFactory$1;->val$annotationGeneratedModule:Lcom/agc/glide/module/AppGlideModule;

    invoke-static {v1, v2, v3}, Lcom/agc/glide/RegistryFactory;->createAndInitRegistry(Lcom/agc/glide/Glide;Ljava/util/List;Lcom/agc/glide/module/AppGlideModule;)Lcom/agc/glide/Registry;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/agc/glide/RegistryFactory$1;->isInitializing:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/agc/glide/RegistryFactory$1;->isInitializing:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/agc/glide/RegistryFactory$1;->get()Lcom/agc/glide/Registry;

    move-result-object v0

    return-object v0
.end method
