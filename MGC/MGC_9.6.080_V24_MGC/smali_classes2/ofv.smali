.class public final Lofv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loff;


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lqvw;

.field public static final c:Lj$/util/concurrent/ConcurrentHashMap;

.field static d:Ljava/lang/Boolean;

.field static e:Ljava/lang/Long;


# instance fields
.field public final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    goto/32 :goto_2c

    nop

    nop

    :goto_0
    iget-boolean v7, v0, Lqvw;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lofv;->d:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, v0, Lqvw;->c:Ljava/lang/String;

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

    nop

    :goto_3
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lqvw;-><init>(Landroid/net/Uri;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "com.google.android.gms.clearcut.public"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "UTF-8"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_25

    nop

    :goto_a
    iget-boolean v8, v0, Lqvw;->f:Z

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    iget-object v3, v0, Lqvw;->a:Landroid/net/Uri;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v1, v0, Lqvw;->d:Z

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
    iget-boolean v15, v0, Lqvw;->f:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v2 .. v8}, Lqvw;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lofv;->c:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    iget-boolean v14, v0, Lqvw;->e:Z

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct/range {v9 .. v15}, Lqvw;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/32 :goto_22

    nop

    nop

    :goto_15
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_16
    iget-object v11, v0, Lqvw;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    const-string v1, "Cannot set GServices prefix and skip GServices"

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

    nop

    :goto_18
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_19
    new-instance v0, Lqvw;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v0, Lofv;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1b
    const-string v12, "LogSamplingRulesV2__"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1}, Lqvj;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

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

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v10, v0, Lqvw;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1f
    new-instance v0, Lqvw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    iget-boolean v13, v0, Lqvw;->d:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sput-object v0, Lofv;->b:Lqvw;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Ljava/lang/IllegalStateException;

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

    nop

    nop

    :goto_25
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_24

    nop

    nop

    :goto_29
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_2b
    const-string v4, "gms:playlog:service:samplingrules_"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2d
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v9, v0

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

    nop

    :goto_2f
    sput-object v0, Lofv;->e:Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_30
    new-instance v0, Lqvw;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqvy;->f(Landroid/content/Context;)V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lofv;->f:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop
.end method
