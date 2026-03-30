.class public abstract Lgrc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lgrc;->a:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-string v0, "grc"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
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

    :goto_1
    iput v0, p0, Lgrc;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static e()Lgrb;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lgrb;-><init>([B)V

    goto/32 :goto_c

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lgrb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, v0, Lgrb;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lrsa;->a:Lrsa;

    nop

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

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Lgrl;
.end method

.method public abstract c()Loze;
.end method

.method public abstract d()Lrss;
.end method

.method public final f()Z
    .locals 3

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget v0, p0, Lgrc;->c:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x2a1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget v1, v1, Loze;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lgrc;->c()Loze;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    const-string v2, "Video file too short. #Frames: %d"

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_f
    iget p0, p0, Lgrc;->c:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_5

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    add-int/2addr v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    invoke-interface {v1, v2, p0}, Lscz;->t(Ljava/lang/String;I)V

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lgrc;->a:Lsdb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_0

    nop

    nop

    :goto_1c
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    if-ge v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method
