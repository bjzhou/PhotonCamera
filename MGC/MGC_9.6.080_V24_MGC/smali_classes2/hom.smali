.class public final Lhom;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljava/util/Set;

.field private final c:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "hom"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lhom;->a:Lsdb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhom;->c:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhom;->b:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 7

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1a

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/uK/JLjgPsjc;->VAKhPQcHhJ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "SHA1"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    sget-object p0, Lhom;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lhom;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p1, "null or empty package name; do not trust"

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "unable to compute hash using %s; do not trust"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "no signatures found for package (%s); do not trust"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_f
    array-length v3, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_24

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0, v0, v3, p1}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    const v1, 0x7

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    return v2

    nop

    :goto_1a
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    nop

    nop

    aget-object v1, v1, v2

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    nop

    nop

    nop

    nop

    sget-object v1, Lpui;->a:[C

    nop

    nop

    nop

    nop

    nop

    array-length v1, p1

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v1, v1

    nop

    nop

    nop

    new-array v1, v1, [C

    nop

    nop

    nop

    nop

    nop

    move v3, v2

    nop

    nop

    :goto_1b
    array-length v4, p1

    nop

    nop

    nop

    nop

    if-ge v3, v4, :cond_0

    nop

    nop

    nop

    nop

    aget-byte v4, p1, v3

    nop

    nop

    nop

    sget-object v5, Lpui;->a:[C

    nop

    shr-int/lit8 v6, v4, 0x4

    nop

    nop

    and-int/lit8 v6, v6, 0xf

    nop

    aget-char v6, v5, v6

    nop

    nop

    nop

    nop

    nop

    and-int/lit8 v4, v4, 0xf

    nop

    aget-char v4, v5, v4

    nop

    nop

    nop

    nop

    add-int v5, v3, v3

    nop

    nop

    nop

    aput-char v6, v1, v5

    nop

    add-int/lit8 v5, v5, 0x1

    nop

    nop

    aput-char v4, v1, v5

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    new-instance p1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    iget-object p0, p0, Lhom;->b:Ljava/util/Set;

    nop

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    nop
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_25

    nop

    nop

    :goto_1c
    const/16 v0, 0x412

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lhom;->a:Lsdb;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_23
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return p0

    nop

    nop

    :catch_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_28
    :try_start_1
    iget-object v1, p0, Lhom;->c:Landroid/content/pm/PackageManager;

    nop

    nop

    const/16 v3, 0x40

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_29
    const/16 p1, 0x413

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return v2

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_40

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v0, 0x415

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_31
    const/16 p1, 0x416

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_32
    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {p0, p1, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p0, Lscz;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/16 v0, 0x414

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v3, :cond_6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3a
    return v2

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3d
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_40
    sget-object p0, Lhom;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_41
    sget-object p0, Lhom;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string v0, "package not found (%s); do not trust"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_44
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop
.end method
