.class public final Lohd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lohd;


# instance fields
.field public final b:Landroid/os/Looper;

.field public final c:Lolx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lohc;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lohd;->a:Lohd;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lohc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lohc;->a()Lohd;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lolx;Landroid/os/Looper;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lohd;->c:Lolx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lohd;->b:Landroid/os/Looper;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
