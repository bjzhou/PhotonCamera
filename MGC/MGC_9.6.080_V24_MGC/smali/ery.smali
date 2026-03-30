.class public final Lery;
.super Leha;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    const/16 v1, 0x12

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x11

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1b

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

    :goto_a
    invoke-direct {p0, v0, v1}, Leha;-><init>(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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
.end method


# virtual methods
.method public final a(Lehx;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const-string p0, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807"

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    const-string p0, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0"

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
