.class public final enum Lhoj;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lhoj;

.field private static final synthetic c:[Lhoj;


# instance fields
.field public final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lhoj;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    filled-new-array {v0}, [Lhoj;

    move-result-object v0

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
    sput-object v0, Lhoj;->c:[Lhoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    new-instance v0, Lhoj;

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

    :goto_4
    sput-object v0, Lhoj;->a:Lhoj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lhoj;->b:Ljava/io/File;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const v0, 0x4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_8
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "INSTANCE"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "/sys/fs/selinux/enforce"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop
.end method

.method public static values()[Lhoj;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lhoj;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    check-cast v0, [Lhoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    sget-object v0, Lhoj;->c:[Lhoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method final a()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

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

    :goto_2
    iget-object p0, p0, Lhoj;->b:Ljava/io/File;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
