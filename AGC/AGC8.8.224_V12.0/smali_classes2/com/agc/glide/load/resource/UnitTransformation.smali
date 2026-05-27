.class public final Lcom/agc/glide/load/resource/UnitTransformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/Transformation<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TRANSFORMATION:Lcom/agc/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Transformation<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/resource/UnitTransformation;

    invoke-direct {v0}, Lcom/agc/glide/load/resource/UnitTransformation;-><init>()V

    sput-object v0, Lcom/agc/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/agc/glide/load/Transformation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/agc/glide/load/resource/UnitTransformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/agc/glide/load/resource/UnitTransformation<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/UnitTransformation;->TRANSFORMATION:Lcom/agc/glide/load/Transformation;

    check-cast v0, Lcom/agc/glide/load/resource/UnitTransformation;

    return-object v0
.end method


# virtual methods
.method public transform(Landroid/content/Context;Lcom/agc/glide/load/engine/Resource;II)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/load/engine/Resource<",
            "TT;>;II)",
            "Lcom/agc/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
