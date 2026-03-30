.class final Lcro;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# static fields
.field public static final a:Lcro;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lcro;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    new-instance v0, Lcro;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcro;->a:Lcro;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

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

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    check-cast p2, Ljava/lang/Number;

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
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_3
    check-cast p1, Lcrt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    invoke-interface {p1}, Lcrt;->h()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
