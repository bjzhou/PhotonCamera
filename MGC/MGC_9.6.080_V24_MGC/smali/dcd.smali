.class final Ldcd;
.super Luci;
.source "PG"

# interfaces
.implements Lubo;


# static fields
.field public static final a:Ldcd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ldcd;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ldcd;->a:Ldcd;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ldcd;

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

    nop

    :goto_0
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

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

    :goto_0
    invoke-interface {p1, p2}, Ldbh;->g(Landroid/graphics/Matrix;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    check-cast p2, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ldbh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop
.end method
