.class public Lkkq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# static fields
.field private static final a:Lsdb;

.field private static final b:Lj$/time/Duration;

.field private static final c:Lj$/time/Duration;

.field private static final d:Lj$/time/Duration;


# instance fields
.field private final e:Lnne;

.field private final f:Lpnu;

.field private final g:Likv;

.field private final h:Lpdf;

.field private final i:Z

.field private final j:Lkls;

.field private final k:Lijo;

.field private final l:Limf;

.field private final m:Lpcm;

.field private final n:Lpcm;

.field private final o:Lgkg;

.field private final p:Loyd;

.field private final q:Loyn;

.field private final r:Loyn;

.field private s:Llue;

.field private t:Llue;

.field private final u:Lhoh;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(I)F
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a()Lcom/google/googlex/gcam/PhysicalStabilityThresholds;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-wide v0, p0, Lcom/google/googlex/gcam/PhysicalStabilityThresholds;->a:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    const v1, 0xe

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, p1}, Likv;->i(I)Lcom/google/googlex/gcam/PhysicalStabilityParams;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PhysicalStabilityThresholds_tripod_speed_rad_per_sec_get(JLcom/google/googlex/gcam/PhysicalStabilityThresholds;)F

    move-result p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lkkq;->g:Likv;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    sput-object v0, Lkkq;->d:Lj$/time/Duration;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const-wide/16 v0, 0x1f4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    sput-object v0, Lkkq;->b:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x16

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    const-wide/16 v0, 0x7d0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lkkq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/16 v0, 0x2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x1

    nop

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

    :goto_c
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    const v0, 0xc

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lkkq;->c:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    sput-object v0, Lkkq;->b:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lkkq;->c:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    sput-object v0, Lkkq;->d:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "kkq"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget v0, Lcom/a;->aa:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_1f
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_20
    const-wide/16 v0, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public constructor <init>(Lnne;Lkls;Lpdf;Likv;Lpnu;Lows;Lijo;Limf;Loxv;Loxv;Lgkg;Lhoh;Loyd;Loyn;Loyn;)V
    .locals 0

    goto/32 :goto_f

    nop

    nop

    :goto_0
    iput-object p11, p0, Lkkq;->o:Lgkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p8, p0, Lkkq;->l:Limf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-boolean p5, p0, Lkkq;->i:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p9, p0, Lkkq;->m:Lpcm;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lkkq;->g:Likv;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iput-object p12, p0, Lkkq;->u:Lhoh;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p13, p0, Lkkq;->p:Loyd;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    iput-object p7, p0, Lkkq;->k:Lijo;

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

    :goto_8
    const/16 p1, 0xf

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lkkq;->h:Lpdf;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p10, p0, Lkkq;->n:Lpcm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p14, p0, Lkkq;->q:Loyn;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    iput-object p15, p0, Lkkq;->r:Loyn;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p6, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p5, p0, Lkkq;->f:Lpnu;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p7, p1}, Ljso;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p6, p2}, Lows;->d(Lpci;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p5, Lnne;->k:Lnne;

    nop

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

    :goto_15
    new-instance p0, Ljso;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    iput-object p2, p0, Lkkq;->j:Lkls;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    iput-object p1, p0, Lkkq;->e:Lnne;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p5}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p5

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_0
    sget-boolean v0, Lcom/a;->RAW:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_1
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_0
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, "StabilityProcessing"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Lkkq;->r:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0xbca

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_5
    cmpg-float v3, v0, v2

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean p0, p0, Lkkq;->i:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lkkq;->e:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_b
    cmpg-float v5, v3, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    sget-object v6, Lhnc;->b:Lhmo;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Lkkq;->s:Llue;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lkkq;->p:Loyd;

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lkkq;->k:Lijo;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v2}, Lpnu;->l()Lpog;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lkkq;->o:Lgkg;

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_13
    goto/16 :goto_c4

    nop

    nop

    :goto_14
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget v0, Lcom/a;->f:I

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_17
    sget-object v4, Lkkq;->c:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lkkq;->e:Lnne;

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_19
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_1a
    const v3, 0x3fcccccd    # 1.6f

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_1b
    const/high16 v4, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1c
    goto/16 :goto_80

    nop

    nop

    :goto_1d
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ltz v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9e

    nop

    nop

    :goto_1f
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e3

    nop

    nop

    :goto_20
    add-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_21
    if-ltz v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :cond_4
    goto/32 :goto_df

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lkkq;->l:Limf;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v2, v5}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_24
    if-ltz v5, :cond_5

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_25
    div-float/2addr v5, v4

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_26
    iget-object v2, p0, Lkkq;->f:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_6

    nop

    goto/32 :goto_b4

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, v0, v1}, Llue;->b(J)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :cond_7
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_74

    nop

    nop

    :goto_2e
    invoke-static {v3, v4, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PhysicalStabilityThresholds_braced_speed_rad_per_sec_get(JLcom/google/googlex/gcam/PhysicalStabilityThresholds;)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2f
    xor-int/2addr v5, v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_31
    mul-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lcom/google/googlex/gcam/ViewfinderResults;->a()F

    move-result v4

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, p0, Lkkq;->q:Loyn;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, p1, v0, v4, v3}, Lijo;->a(ZZZZ)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v2}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, p0, Lkkq;->s:Llue;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_39
    iget-object v0, p0, Lkkq;->n:Lpcm;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_3a
    move v0, v4

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_54

    nop

    :goto_3e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    :goto_40
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v0, "Error getting physical camera ID"

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_42
    iget-object v2, p0, Lkkq;->q:Loyn;

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_43
    sget-object v3, Lkkq;->c:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_44
    if-gez v5, :cond_9

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v2, v0, v1}, Llue;->a(J)V

    :goto_46
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-wide v3, v2, Lcom/google/googlex/gcam/PhysicalStabilityThresholds;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_48
    new-instance v2, Landroid/util/Range;

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v2, p0, Lkkq;->s:Llue;

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_97

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    :goto_4e
    iget-object v2, p0, Lkkq;->s:Llue;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lkkq;->e:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v2, p1}, Likv;->j(I)Lcom/google/googlex/gcam/PostShutterAfParams;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_51
    iget-wide v0, p1, Lcom/google/googlex/gcam/ViewfinderResults;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v2, v3}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v2

    nop

    :goto_54
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_55
    cmpg-float v6, v4, v3

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_56
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_57
    goto/16 :goto_ec

    nop

    nop

    :goto_58
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_59
    invoke-direct {v2, v0, v3, v4, v5}, Llue;-><init>(Landroid/util/Range;Lj$/time/Duration;Lj$/time/Duration;Lj$/time/Duration;)V

    goto/32 :goto_49

    nop

    nop

    :goto_5a
    invoke-direct {v3, v0, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/32 :goto_f4

    nop

    nop

    :goto_5b
    if-eq v0, v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_b
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object v2, Lnne;->l:Lnne;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_5f
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p0, Lkkq;->t:Llue;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_63
    const/4 v3, 0x1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_64
    sget-object v4, Lkkq;->d:Lj$/time/Duration;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c3

    nop

    nop

    :goto_68
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    cmpg-float v4, v3, v1

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_6b
    sget-object v5, Lkkq;->d:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_6c
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_3a

    nop

    nop

    :goto_6e
    invoke-interface {v0, p1}, Likv;->l(I)Lcom/google/googlex/gcam/ViewfinderResults;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {v0, v2, v1, v3, v4}, Llue;-><init>(Landroid/util/Range;Lj$/time/Duration;Lj$/time/Duration;Lj$/time/Duration;)V

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_71
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_72
    return-void

    nop

    :goto_73
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const/high16 v5, 0x44fa0000    # 2000.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_75
    add-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_76
    invoke-interface {v2, p1}, Likv;->i(I)Lcom/google/googlex/gcam/PhysicalStabilityParams;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v2, p1, v0, v1}, Llue;->a(FJ)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_78
    const v2, 0x45bb8000    # 6000.0f

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_1b

    nop

    nop

    :goto_7b
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_7c
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v0, p1}, Likv;->l(I)Lcom/google/googlex/gcam/ViewfinderResults;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_7f
    invoke-direct {p0, p1}, Lkkq;->33f5b80483094659737b73d90f80a8a4m(I)F

    move-result v0

    nop

    :goto_80
    goto/32 :goto_be

    nop

    nop

    :goto_81
    invoke-virtual {v2}, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a()Lcom/google/googlex/gcam/PhysicalStabilityThresholds;

    move-result-object v2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v0, p0, Lkkq;->g:Likv;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_83
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v5, p0, Lkkq;->j:Lkls;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_85
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    :cond_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iput-object v0, p0, Lkkq;->t:Llue;

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    new-instance v0, Llue;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v3, v4, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderResults_payload_capture_time_ms_get(JLcom/google/googlex/gcam/ViewfinderResults;)F

    move-result v3

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_8a
    new-instance v2, Llue;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v0, v2}, Lgkg;->a(Lnne;)Z

    move-result v0

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

    nop

    :goto_8d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_8e
    if-nez v2, :cond_d

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :cond_d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/16 :goto_ec

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_22

    nop

    nop

    :goto_91
    invoke-virtual {p0}, Lkkq;->b()Lj$/time/Duration;

    move-result-object v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_92
    float-to-long v2, v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v1, p0, Lkkq;->j:Lkls;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-wide v5, v2, Lcom/google/googlex/gcam/PostShutterAfParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_96
    add-float v2, v3, v4

    nop

    nop

    :goto_97
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_98
    sub-float/2addr v5, v3

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_99
    sget-object v2, Lnne;->b:Lnne;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v0}, Lijo;->r()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_9b
    iget-object p0, p0, Lkkq;->k:Lijo;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-static {v0, v1, p0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_9d
    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :cond_e
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    sget v5, Lcom/a;->aa:I

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_9f
    iget-object v2, p0, Lkkq;->g:Likv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-nez v2, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :cond_f
    goto/32 :goto_bf

    nop

    nop

    :goto_a1
    invoke-virtual {p0}, Lkkq;->b()Lj$/time/Duration;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a2
    invoke-interface {v5}, Lkls;->b()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_a4
    sget-object p0, Lkkq;->a:Lsdb;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v0}, Limf;->g()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_a7
    if-ltz v4, :cond_10

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_10
    goto/32 :goto_5e

    nop

    nop

    :goto_a8
    iget-object v3, p0, Lkkq;->m:Lpcm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_a9
    if-eqz v0, :cond_11

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_aa
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_ab
    sget-object v2, Liio;->a:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    goto/16 :goto_7d

    nop

    :goto_ad
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-gez v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez v2, :cond_13

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_b1
    invoke-interface {v1, p1, v0, v2, p0}, Lkls;->a(ZZLpog;Z)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    cmpg-float v6, v5, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b3
    goto/16 :goto_f9

    nop

    nop

    :goto_b4
    goto/32 :goto_34

    nop

    nop

    :goto_b5
    invoke-interface {v3, v2}, Lpcm;->a(Ljava/lang/Object;)V

    :goto_b6
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-static {v2, v3}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-interface {v0, v2}, Lpcm;->a(Ljava/lang/Object;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    iget-boolean v0, p0, Lkkq;->i:Z

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

    :goto_ba
    iget-object v2, p0, Lkkq;->t:Llue;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v0, v2}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    if-nez v2, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_14
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    sget-object v2, Lnne;->l:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v2, p0, Lkkq;->g:Likv;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {v2}, Lsrp;->c(Lj$/time/Duration;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-nez v1, :cond_15

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_15
    goto/32 :goto_9b

    nop

    nop

    :goto_c2
    if-nez v3, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :cond_16
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v2, v0, v1}, Llue;->a(J)V

    :goto_c4
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    if-eqz v5, :cond_17

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v1, p0, Lkkq;->e:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v0, p0, Lkkq;->g:Likv;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-static {v2, v3}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iget-object v2, p0, Lkkq;->s:Llue;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-direct {p0, p1}, Lkkq;->33f5b80483094659737b73d90f80a8a4m(I)F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-interface {v5, v6}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-interface {v2, v5}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_cd
    iget-object v5, p0, Lkkq;->u:Lhoh;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_ce
    iget-object v2, p0, Lkkq;->t:Llue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    cmpl-float v5, v4, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_d0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_d1
    mul-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ViewfinderResults_gyro_speed_rad_per_sec_get(JLcom/google/googlex/gcam/ViewfinderResults;)F

    move-result p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object v0, p0, Lkkq;->m:Lpcm;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_d4
    check-cast v0, Landroid/util/Range;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_d5
    if-lez v0, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_65

    nop

    :goto_d6
    iget-object v0, p0, Lkkq;->h:Lpdf;

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

    :goto_d7
    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_d8
    iget-object p1, p0, Lkkq;->t:Llue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-static {v5, v6, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PostShutterAfParams_max_handheld_exposure_time_ms_get(JLcom/google/googlex/gcam/PostShutterAfParams;)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_db
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_df
    move/from16 v2, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_e0
    float-to-long v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_e1
    invoke-virtual {v0}, Lcom/google/googlex/gcam/ViewfinderResults;->a()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    if-nez v2, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v2, p1, v0, v1}, Llue;->a(FJ)V

    :goto_e4
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    new-instance v3, Landroid/util/Range;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    check-cast p1, Lpro;

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1a

    nop

    invoke-interface {p1}, Lpro;->b()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :cond_1a
    iget-object v1, p0, Lkkq;->g:Likv;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v0

    nop

    nop

    invoke-interface {v1, p1, v0}, Likv;->c(Lpro;Lpnx;)I

    move-result p1

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    sget-object v2, Lnne;->l:Lnne;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    sget-object v2, Lnne;->l:Lnne;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v2, v0, v1}, Llue;->b(J)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_ea
    sget v3, Lcom/a;->sBrightness:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-interface {v0, v2}, Lpcm;->a(Ljava/lang/Object;)V

    :goto_ec
    goto/32 :goto_b9

    nop

    nop

    :goto_ed
    if-nez v0, :cond_1b

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    int-to-float v5, v5

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    if-ltz v3, :cond_1c

    nop

    nop

    goto/32 :goto_ad

    nop

    :cond_1c
    goto/32 :goto_e5

    nop

    nop

    :goto_f1
    goto/16 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_f3
    iget-wide v3, v0, Lcom/google/googlex/gcam/ViewfinderResults;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    if-nez v0, :cond_1d

    nop

    nop

    goto/32 :goto_90

    nop

    :cond_1d
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v1, p0, Lkkq;->h:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_f7
    iget-object p0, p0, Lkkq;->h:Lpdf;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f8
    invoke-interface {v2, v5}, Loyn;->a(Ljava/lang/Object;)V

    :goto_f9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-direct {v2, v1, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final b()Lj$/time/Duration;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    int-to-long v0, p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lhnu;->c:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lkkq;->b:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lkkq;->e:Lnne;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    iget-object p0, p0, Lkkq;->u:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xb

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lnne;->l:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    :goto_17
    check-cast p0, Ljava/lang/Integer;

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
.end method
