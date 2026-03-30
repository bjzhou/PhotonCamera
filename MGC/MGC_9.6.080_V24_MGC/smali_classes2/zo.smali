.class final Lzo;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# static fields
.field public static final a:Lzo;


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
    sput-object v0, Lzo;->a:Lzo;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lzo;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lzo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, p0, v0}, Laef;-><init>(Lubk;Lubk;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p1}, Lzn;-><init>(Lcgb;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lzm;->a:Lzm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lzn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lcgb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    new-instance p1, Laef;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
