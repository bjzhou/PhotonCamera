.class public final Lnej;
.super Lnec;


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    invoke-direct {p0}, Lnec;-><init>()V

    iput-object p1, p0, Lnej;->b:Ljava/security/MessageDigest;

    iput p2, p0, Lnej;->c:I

    return-void
.end method


# virtual methods
.method public final v([B)V
    .locals 3

    invoke-virtual {p0}, Lnej;->w()V

    iget-object v0, p0, Lnej;->b:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-boolean v0, p0, Lnej;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    return-void
.end method
