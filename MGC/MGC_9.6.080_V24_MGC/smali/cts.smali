.class final Lcts;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# static fields
.field public static final a:Lcts;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {v0}, Lcts;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Lcts;->a:Lcts;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    new-instance v0, Lcts;

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
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lcrd;->b()Lcrc;

    move-result-object p1

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
    iget-boolean p1, p1, Lcrc;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-interface {p1}, Lcrd;->b()Lcrc;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lcrd;

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

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

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

    nop

    :goto_6
    iput-boolean p1, p0, Lcrc;->e:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
