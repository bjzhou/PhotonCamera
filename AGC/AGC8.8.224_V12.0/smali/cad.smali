.class public final Lcad;
.super Ljava/lang/Object;

# interfaces
.implements Lbqb;


# static fields
.field public static final synthetic b:I


# instance fields
.field private final c:I

.field private final d:Lbqb;


# direct methods
.method public constructor <init>(ILbqb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcad;->c:I

    iput-object p2, p0, Lcad;->d:Lbqb;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 2

    iget-object v0, p0, Lcad;->d:Lbqb;

    invoke-interface {v0, p1}, Lbqb;->a(Ljava/security/MessageDigest;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcad;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcad;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcad;

    iget v0, p0, Lcad;->c:I

    iget v2, p1, Lcad;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcad;->d:Lbqb;

    iget-object p1, p1, Lcad;->d:Lbqb;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcad;->d:Lbqb;

    iget v1, p0, Lcad;->c:I

    invoke-static {v0, v1}, Lcaw;->d(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method
