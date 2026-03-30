.class public final Lnop;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpv;
.implements Ljpt;


# instance fields
.field public final a:Ltxm;

.field public final b:Ltxm;

.field public final c:Landroid/content/pm/PackageInfo;

.field public final d:Lowu;

.field public final e:Ljov;

.field public final f:Llyv;

.field public final g:Llyv;

.field public final h:Lmjv;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Llyv;Llyv;Landroid/content/pm/PackageInfo;Lowu;Ljov;Lmjv;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Lnop;->e:Ljov;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p4, p0, Lnop;->g:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lnop;->f:Llyv;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p6, p0, Lnop;->d:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lnop;->c:Landroid/content/pm/PackageInfo;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iput-object p8, p0, Lnop;->h:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lnop;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput-object p2, p0, Lnop;->b:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final dj()V
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    cmp-long v0, v0, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lnop;->f:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v1, Llyr;->at:Llzf;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_29

    nop

    :goto_9
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lnot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Ltva;->c()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ltz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    :goto_10
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lnop;->f:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Ljava/lang/Integer;

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

    :goto_13
    invoke-static {}, Ltva;->b()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lnop;->a:Ltxm;

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

    :goto_17
    sget-object v1, Llyr;->as:Llzf;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x13

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lnot;->b()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gez v0, :cond_3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    int-to-long v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    invoke-static {}, Ltva;->b()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Ltva;->c()J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    cmp-long v0, v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method
