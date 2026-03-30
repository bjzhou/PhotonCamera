.class final Ldes;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# static fields
.field public static final a:Ldes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ldes;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ldes;->a:Ldes;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    new-instance v0, Ldes;

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

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    nop

    :goto_1
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Number;

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
