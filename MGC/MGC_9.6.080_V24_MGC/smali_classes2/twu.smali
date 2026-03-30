.class public final Ltwu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# static fields
.field public static final a:Ltwu;


# instance fields
.field private final b:Lrtm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ltwu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    sput-object v0, Ltwu;->a:Ltwu;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ltwu;-><init>()V

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ltww;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, v0}, Lrtp;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    const v0, 0x11

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ltww;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    iput-object v1, p0, Ltwu;->b:Lrtm;

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

    :goto_d
    new-instance v1, Lrtp;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    goto/32 :goto_5

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

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltwu;->b()Ltwv;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final b()Ltwv;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ltwv;

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

    :goto_1
    iget-object p0, p0, Lrtp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ltwu;->b:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lrtp;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
