.class public abstract Lcom/agc/glide/util/pool/StateVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/util/pool/StateVerifier$DefaultStateVerifier;,
        Lcom/agc/glide/util/pool/StateVerifier$DebugStateVerifier;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/agc/glide/util/pool/StateVerifier$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/util/pool/StateVerifier;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/agc/glide/util/pool/StateVerifier;
    .locals 1

    new-instance v0, Lcom/agc/glide/util/pool/StateVerifier$DefaultStateVerifier;

    invoke-direct {v0}, Lcom/agc/glide/util/pool/StateVerifier$DefaultStateVerifier;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract setRecycled(Z)V
.end method

.method public abstract throwIfRecycled()V
.end method
