.class final Lesu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

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
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-string v0, "Alarms"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static a(Landroid/content/Context;Levg;I)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v2, 0x24000000

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_11
    sget-object v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->ARVj:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, p1}, Lesv;->c(Landroid/content/Context;Levg;)Landroid/content/Intent;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_16
    check-cast v0, Landroid/app/AlarmManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public static b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Levg;J)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-static {p0, p2, p1, p3, p4}, Lesu;->c(Landroid/content/Context;Levg;IJ)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v2}, Left;->f(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    check-cast p1, Left;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

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

    nop

    :goto_8
    new-instance v1, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v2, v1, v3}, Lesh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_d
    iget p1, v1, Leva;->c:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    const v0, 0x1

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

    :goto_f
    const v1, 0x5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v2, Lesh;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, p2}, Leao;->f(Levb;Levg;)Leva;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p2, p1, p3, p4}, Lesu;->c(Landroid/content/Context;Levg;IJ)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v1}, Levb;->a(Leva;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, p1, v2}, Lfdn;-><init>(Landroidx/work/impl/WorkDatabase;[B)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->y()Levb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0, p2, p1}, Lesu;->a(Landroid/content/Context;Levg;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    iget p1, v1, Leva;->c:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    invoke-static {p2, p1}, Lebm;->f(Levg;I)Leva;

    move-result-object v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c(Landroid/content/Context;Levg;IJ)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v1, 0xc000000

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    const/4 p1, 0x0

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

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
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1, p3, p4, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    check-cast v0, Landroid/app/AlarmManager;

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

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "alarm"

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

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p2, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_10
    const v1, 0xd

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    const v0, 0x1d

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

    :goto_12
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

    :goto_13
    invoke-static {p0, p1}, Lesv;->c(Landroid/content/Context;Levg;)Landroid/content/Intent;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop
.end method
