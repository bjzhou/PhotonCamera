.class public final Lfbu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:D

.field private final c:C

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;CDLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfbu;->a:Ljava/util/List;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lfbu;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lfbu;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-wide p3, p0, Lfbu;->b:D

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-char p2, p0, Lfbu;->c:C

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(CLjava/lang/String;Ljava/lang/String;)I
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/lit8 p0, p0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    add-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-int/lit8 p0, p0, 0x1f

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

    :goto_6
    return p0

    nop

    nop
.end method


# virtual methods
.method public final hashCode()I
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lfbu;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lfbu;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    iget-char v0, p0, Lfbu;->c:C

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1, p0}, Lfbu;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop
.end method
