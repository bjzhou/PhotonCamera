.class public final Ltvm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# static fields
.field public static final a:Ltvm;


# instance fields
.field private final b:Lrtm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

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
    sput-object v0, Ltvm;->a:Ltvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ltvm;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ltvm;

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

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lrgw;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_6
    iput-object v1, p0, Ltvm;->b:Lrtm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    invoke-direct {v1, v0}, Lrtp;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lrtp;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lrgw;

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
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltvm;->b()Lrgw;

    move-result-object p0

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

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final b()Lrgw;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    check-cast p0, Lrtp;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrtp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lrgw;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ltvm;->b:Lrtm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
