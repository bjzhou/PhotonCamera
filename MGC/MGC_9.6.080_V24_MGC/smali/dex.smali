.class final Ldex;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcad;


# static fields
.field public static final b:Ldex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ldex;

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

    :goto_1
    return-void

    nop

    :goto_2
    sput-object v0, Ldex;->b:Ldex;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ldex;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final fold(Ljava/lang/Object;Lubo;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lrkm;->y(Luab;Ljava/lang/Object;Lubo;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final get(Luac;)Luab;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lrkm;->z(Luab;Luac;)Luab;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final synthetic getKey()Luac;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcad;->a:Lcac;

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
.end method

.method public final minusKey(Luac;)Luad;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lrkm;->A(Luab;Luac;)Luad;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final plus(Luad;)Luad;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lrkm;->B(Luab;Luad;)Luad;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method
