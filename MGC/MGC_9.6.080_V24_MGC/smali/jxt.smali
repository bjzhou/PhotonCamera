.class public final Ljxt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lqhi;


# instance fields
.field public final b:Lpnu;

.field public final c:Lpqv;

.field public final d:Lnpr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    sput-object v0, Ljxt;->a:Lqhi;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_2
    invoke-static {v0}, Lqhi;->c([F)Lqhi;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    new-array v0, v0, [F

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x9

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
.end method

.method public constructor <init>(Lpqv;Lpnu;Lnpr;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljxt;->d:Lnpr;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p2, p0, Ljxt;->b:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ljxt;->c:Lpqv;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
