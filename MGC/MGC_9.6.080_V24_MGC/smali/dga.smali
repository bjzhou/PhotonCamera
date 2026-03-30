.class final Ldga;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# static fields
.field public static final a:Ldga;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Ldga;->a:Ldga;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ldga;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ldga;-><init>()V

    goto/32 :goto_0

    nop

    nop

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

    nop

    goto/32 :goto_2

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
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lcth;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcun;->j(I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    iget-object p0, p1, Lcth;->t:Lcun;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
