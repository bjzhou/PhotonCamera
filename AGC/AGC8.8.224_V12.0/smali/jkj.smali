.class public final Ljkj;
.super Ljjz;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Landroid/net/Uri;

.field public final g:Ljkk;

.field public final h:J

.field public final i:Landroid/net/Uri;

.field public final j:Ljkl;

.field public final k:Landroid/net/Uri;

.field private final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljhi;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljhi;-><init>(I)V

    sput-object v0, Ljkj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;ILandroid/net/Uri;Ljkk;JLandroid/net/Uri;Ljkl;[BLandroid/net/Uri;)V
    .locals 8

    move-object v0, p0

    move v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p6

    invoke-direct {p0}, Ljjz;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-static {v5}, Lmoz;->e(Z)V

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Lmoz;->e(Z)V

    if-eqz v4, :cond_2

    if-nez v2, :cond_2

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-static {v6}, Lmoz;->e(Z)V

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_2
    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v6

    invoke-static {v7}, Lmoz;->e(Z)V

    packed-switch v3, :pswitch_data_0

    const/4 v6, 0x0

    goto :goto_2

    :goto_2
    :pswitch_0
    invoke-static {v6}, Lmoz;->e(Z)V

    :goto_3
    move-object v6, p1

    iput-object v6, v0, Ljkj;->a:Ljava/lang/String;

    iput v1, v0, Ljkj;->b:I

    move v1, p3

    iput-boolean v1, v0, Ljkj;->c:Z

    iput-object v2, v0, Ljkj;->d:Ljava/lang/String;

    iput v3, v0, Ljkj;->e:I

    iput-object v4, v0, Ljkj;->f:Landroid/net/Uri;

    move-object/from16 v1, p10

    iput-object v1, v0, Ljkj;->i:Landroid/net/Uri;

    move-object v1, p7

    iput-object v1, v0, Ljkj;->g:Ljkk;

    move-wide/from16 v1, p8

    iput-wide v1, v0, Ljkj;->h:J

    move-object/from16 v1, p11

    iput-object v1, v0, Ljkj;->j:Ljkl;

    if-nez p12, :cond_3

    new-array v1, v5, [B

    goto :goto_4

    :cond_3
    move-object/from16 v1, p12

    :goto_4
    iput-object v1, v0, Ljkj;->l:[B

    move-object/from16 v1, p13

    iput-object v1, v0, Ljkj;->k:Landroid/net/Uri;

    return-void

    :cond_4
    if-nez v4, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "must call exactly one of #setFederatedOptions or #setPersonalizedOptions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot call both #setFederatedOptions and #setPersonalizedOptions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Ljki;
    .locals 1

    new-instance v0, Ljki;

    invoke-direct {v0}, Ljki;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()[B
    .locals 2

    iget-object v0, p0, Ljkj;->l:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljkj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljkj;

    iget-object v1, p0, Ljkj;->a:Ljava/lang/String;

    iget-object v3, p1, Ljkj;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Ljkj;->b:I

    iget v3, p1, Ljkj;->b:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Ljkj;->c:Z

    iget-boolean v3, p1, Ljkj;->c:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Ljkj;->d:Ljava/lang/String;

    iget-object v3, p1, Ljkj;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Ljkj;->e:I

    iget v3, p1, Ljkj;->e:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Ljkj;->f:Landroid/net/Uri;

    iget-object v3, p1, Ljkj;->f:Landroid/net/Uri;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljkj;->i:Landroid/net/Uri;

    iget-object v3, p1, Ljkj;->i:Landroid/net/Uri;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljkj;->g:Ljkk;

    iget-object v3, p1, Ljkj;->g:Ljkk;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Ljkj;->h:J

    iget-wide v5, p1, Ljkj;->h:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Ljkj;->j:Ljkl;

    iget-object v3, p1, Ljkj;->j:Ljkl;

    invoke-static {v1, v3}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljkj;->l:[B

    iget-object v3, p1, Ljkj;->l:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljkj;->k:Landroid/net/Uri;

    iget-object p1, p1, Ljkj;->k:Landroid/net/Uri;

    invoke-static {v1, p1}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Ljkj;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Ljkj;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Ljkj;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    iget-object v2, p0, Ljkj;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v1, p0, Ljkj;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x5

    iget-object v2, p0, Ljkj;->f:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Ljkj;->i:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Ljkj;->g:Ljkk;

    aput-object v2, v0, v1

    iget-wide v1, p0, Ljkj;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    iget-object v2, p0, Ljkj;->j:Ljkl;

    aput-object v2, v0, v1

    iget-object v1, p0, Ljkj;->l:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    iget-object v2, p0, Ljkj;->k:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Ljkj;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v1, p0, Ljkj;->b:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-boolean v1, p0, Ljkj;->c:Z

    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Ljkj;->d:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v1}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget v1, p0, Ljkj;->e:I

    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Ljkj;->f:Landroid/net/Uri;

    const/4 v2, 0x6

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Ljkj;->g:Ljkk;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-wide v1, p0, Ljkj;->h:J

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, v2}, Ljhp;->h(Landroid/os/Parcel;IJ)V

    iget-object v1, p0, Ljkj;->i:Landroid/net/Uri;

    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Ljkj;->j:Ljkl;

    const/16 v2, 0xc

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-virtual {p0}, Ljkj;->b()[B

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {p1, v2, v1}, Ljhp;->j(Landroid/os/Parcel;I[B)V

    iget-object v1, p0, Ljkj;->k:Landroid/net/Uri;

    const/16 v2, 0xe

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
