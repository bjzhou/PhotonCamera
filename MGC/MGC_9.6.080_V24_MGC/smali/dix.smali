.class final Ldix;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:Landroid/text/TextPaint;

.field public final d:I

.field public final e:Landroid/text/TextDirectionHeuristic;

.field public final f:Landroid/text/Layout$Alignment;

.field public final g:I

.field public final h:Landroid/text/TextUtils$TruncateAt;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IIIIII)V
    .locals 0

    goto/32 :goto_2d

    nop

    nop

    :goto_0
    iput p2, p0, Ldix;->b:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    iput p11, p0, Ldix;->k:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "invalid start value"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldix;->a:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "invalid ellipsizedWidth value"

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string p1, "invalid end value"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Ldix;->e:Landroid/text/TextDirectionHeuristic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gez p2, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-le p2, p0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p8, p0, Ldix;->h:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p9, p0, Ldix;->i:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p6, p0, Ldix;->f:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-gez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    const-string p1, "invalid maxLines value"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput p10, p0, Ldix;->j:I

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

    :goto_13
    throw p0

    nop

    nop

    :goto_14
    if-gez p7, :cond_3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput p7, p0, Ldix;->g:I

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    iput p12, p0, Ldix;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    iput-object p3, p0, Ldix;->c:Landroid/text/TextPaint;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p0

    nop

    :goto_1e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-gez p9, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_22
    if-gez p4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_26
    iput p4, p0, Ldix;->d:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_29
    iput p14, p0, Ldix;->n:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput p13, p0, Ldix;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string p1, "invalid width value"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_28

    nop

    nop
.end method
