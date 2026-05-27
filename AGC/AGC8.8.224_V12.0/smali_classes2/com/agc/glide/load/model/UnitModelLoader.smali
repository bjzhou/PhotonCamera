.class public Lcom/agc/glide/load/model/UnitModelLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/model/UnitModelLoader$UnitFetcher;,
        Lcom/agc/glide/load/model/UnitModelLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/model/ModelLoader<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/agc/glide/load/model/UnitModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/model/UnitModelLoader<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/model/UnitModelLoader;

    invoke-direct {v0}, Lcom/agc/glide/load/model/UnitModelLoader;-><init>()V

    sput-object v0, Lcom/agc/glide/load/model/UnitModelLoader;->INSTANCE:Lcom/agc/glide/load/model/UnitModelLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/agc/glide/load/model/UnitModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/load/model/UnitModelLoader<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/model/UnitModelLoader;->INSTANCE:Lcom/agc/glide/load/model/UnitModelLoader;

    return-object v0
.end method


# virtual methods
.method public buildLoadData(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/model/ModelLoader$LoadData<",
            "TModel;>;"
        }
    .end annotation

    new-instance p2, Lcom/agc/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/agc/glide/signature/ObjectKey;

    invoke-direct {p3, p1}, Lcom/agc/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/agc/glide/load/model/UnitModelLoader$UnitFetcher;

    invoke-direct {p4, p1}, Lcom/agc/glide/load/model/UnitModelLoader$UnitFetcher;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lcom/agc/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public handles(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
