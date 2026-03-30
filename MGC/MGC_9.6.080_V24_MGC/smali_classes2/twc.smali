.class public final Ltwc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# static fields
.field public static final a:Ltwc;


# instance fields
.field private final b:Lrtm;


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

    :goto_1
    invoke-direct {v0}, Ltwc;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltwc;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    sput-object v0, Ltwc;->a:Ltwc;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ltwe;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ltwe;

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

    :goto_6
    new-instance v1, Lrtp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iput-object v1, p0, Ltwc;->b:Lrtm;

    nop

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

    :goto_8
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v0, 0x5

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

    nop

    :goto_d
    invoke-direct {v1, v0}, Lrtp;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

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
    invoke-virtual {p0}, Ltwc;->b()Ltwd;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Ltwd;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lrtp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ltwd;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Ltwc;->b:Lrtm;

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

    :goto_4
    check-cast p0, Lrtp;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
