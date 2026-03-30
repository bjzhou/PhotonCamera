.class public final Leqw;
.super Leha;
.source "PG"


# static fields
.field public static final c:Leqw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Leqw;

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

    :goto_1
    invoke-direct {v0}, Leqw;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Leqw;->c:Leqw;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method private constructor <init>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

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
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1}, Leha;-><init>(II)V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    const/16 v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const v0, 0xa

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
.end method


# virtual methods
.method public final a(Lehx;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const-string p0, "ALTER TABLE `WorkSpec` ADD COLUMN `generation` INTEGER NOT NULL DEFAULT 0"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const-string p0, "DELETE FROM SystemIdInfo WHERE work_spec_id IN (SELECT work_spec_id FROM SystemIdInfo LEFT JOIN WorkSpec ON work_spec_id = id WHERE WorkSpec.id IS NULL)"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const-string p0, "ALTER TABLE `_new_SystemIdInfo` RENAME TO `SystemIdInfo`"

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

    :goto_5
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p0, "DROP TABLE `SystemIdInfo`"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    const-string p0, "INSERT INTO `_new_SystemIdInfo` (`work_spec_id`,`system_id`) SELECT `work_spec_id`,`system_id` FROM `SystemIdInfo`"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_a
    const-string p0, "CREATE TABLE IF NOT EXISTS `_new_SystemIdInfo` (\n            `work_spec_id` TEXT NOT NULL, \n            `generation` INTEGER NOT NULL DEFAULT 0, \n            `system_id` INTEGER NOT NULL, \n            PRIMARY KEY(`work_spec_id`, `generation`), \n            FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) \n                ON UPDATE CASCADE ON DELETE CASCADE )"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, p0}, Lehx;->g(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
