.class public final Lcom/agc/glide/signature/EmptySignature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/Key;


# static fields
.field private static final EMPTY_KEY:Lcom/agc/glide/signature/EmptySignature;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/agc/glide/signature/EmptySignature;

    invoke-direct {v0}, Lcom/agc/glide/signature/EmptySignature;-><init>()V

    sput-object v0, Lcom/agc/glide/signature/EmptySignature;->EMPTY_KEY:Lcom/agc/glide/signature/EmptySignature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lcom/agc/glide/signature/EmptySignature;
    .locals 1

    sget-object v0, Lcom/agc/glide/signature/EmptySignature;->EMPTY_KEY:Lcom/agc/glide/signature/EmptySignature;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
