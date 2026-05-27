.class public Lcom/agc/glide/load/model/UnitModelLoader$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/model/UnitModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoaderFactory<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final FACTORY:Lcom/agc/glide/load/model/UnitModelLoader$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/UnitModelLoader$Factory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/model/UnitModelLoader$Factory;

    invoke-direct {v0}, Lcom/agc/glide/load/model/UnitModelLoader$Factory;-><init>()V

    sput-object v0, Lcom/agc/glide/load/model/UnitModelLoader$Factory;->FACTORY:Lcom/agc/glide/load/model/UnitModelLoader$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/agc/glide/load/model/UnitModelLoader$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/load/model/UnitModelLoader$Factory<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/model/UnitModelLoader$Factory;->FACTORY:Lcom/agc/glide/load/model/UnitModelLoader$Factory;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/agc/glide/load/model/MultiModelLoaderFactory;)Lcom/agc/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader<",
            "TModel;TModel;>;"
        }
    .end annotation

    invoke-static {}, Lcom/agc/glide/load/model/UnitModelLoader;->getInstance()Lcom/agc/glide/load/model/UnitModelLoader;

    move-result-object p1

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
