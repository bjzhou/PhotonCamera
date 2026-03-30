.class public final synthetic Lcom/explr/bc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/explr/bc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lcom/explr/bc;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/explr/bc;->INSTANCE:Lcom/explr/bc;

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

    :goto_2
    new-instance v0, Lcom/explr/bc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method private synthetic constructor <init>()V
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

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p2}, Lcom/explr/cb;->lambda$C9uQuNV58yqbMYnpXXHEPGCsC7M(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Ljava/io/File;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Ljava/io/File;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
