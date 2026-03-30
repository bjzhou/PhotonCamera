.class public final Leeb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Ledx;

.field private final c:Ljava/io/FileOutputStream;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Leeb;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Leeb;->e:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Leeb;->c:Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Leeb;->a:I

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

    :goto_6
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Leeb;->e:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Leeb;->d:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final c()Lhwy;
    .locals 8

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, p0, Leeb;->c:Ljava/io/FileOutputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Leeb;->b:Ledx;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v5, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {v2 .. v7}, Lhwy;-><init>(Ljava/io/FileOutputStream;ILedx;ZZ)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    iget v4, p0, Leeb;->a:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, v1}, Ldvz;->e(ZLjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    :goto_c
    iget-boolean v6, p0, Leeb;->d:Z

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

    :goto_d
    new-instance v0, Lhwy;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    sget-object v1, Ledx;->a:Ledx;

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    const v1, 0x1c

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    const-string v1, "EditablevideoParameters must be set for FILE_FORMAT_EDITABLE_VIDEO"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iget-boolean v7, p0, Leeb;->e:Z

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method
