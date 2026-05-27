.class final Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/cache/SafeKeyGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PoolableDigestContainer"
.end annotation


# instance fields
.field final messageDigest:Ljava/security/MessageDigest;

.field private final stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/agc/glide/util/pool/StateVerifier;->newInstance()Lcom/agc/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    iput-object p1, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public getVerifier()Lcom/agc/glide/util/pool/StateVerifier;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/cache/SafeKeyGenerator$PoolableDigestContainer;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    return-object v0
.end method
