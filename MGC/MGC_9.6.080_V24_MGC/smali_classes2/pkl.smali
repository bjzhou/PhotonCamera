.class public final Lpkl;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpgn;

.field public final b:Lpea;

.field public final c:Lpkn;

.field public final d:Lpln;

.field public final e:Lows;

.field public final f:Lpdf;

.field public final g:Lpcu;

.field public final h:Lplc;

.field public final i:Landroid/os/Handler;

.field public final j:Lpjs;

.field public k:Lpkk;

.field private final l:Lpic;

.field private final m:Lnar;


# direct methods
.method public constructor <init>(Lpgn;Lpea;Lpkn;Lpln;Landroid/os/Handler;Lplc;Lows;Lpdf;Lpcu;Lnar;Lpjs;Lpic;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpkl;->b:Lpea;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    iput-object p11, p0, Lpkl;->j:Lpjs;

    nop

    nop

    nop

    goto/32 :goto_c

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpkl;->g:Lpcu;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p7, p0, Lpkl;->e:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lpkl;->d:Lpln;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lpkl;->i:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p6, p0, Lpkl;->h:Lplc;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p10, p0, Lpkl;->m:Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lpkl;->c:Lpkn;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-interface {p9, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p12, p0, Lpkl;->l:Lpic;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p8, p0, Lpkl;->f:Lpdf;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p1, "CameraOpener"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    iput-object p1, p0, Lpkl;->a:Lpgn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lplc;Landroid/os/Handler;)Lpko;
    .locals 10

    goto/32 :goto_15

    nop

    nop

    :goto_0
    iget-object v7, p0, Lpkl;->l:Lpic;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    iget-object v8, p0, Lpgn;->o:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v5, p0, Lpkl;->g:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    move-object v1, p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lpkl;->a:Lpgn;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v8}, Lpko;-><init>(Lplc;Lpln;Landroid/os/Handler;Lpdf;Lpcu;Lnar;Lpic;Lrss;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v4, p0, Lpkl;->f:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v1, 0x16

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    iget-object v6, p0, Lpkl;->m:Lnar;

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_f
    iget-object v2, p0, Lpkl;->d:Lpln;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v3, p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    move-object v0, v9

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

    :goto_12
    return-object v9

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v9, Lpko;

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

    :goto_15
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
