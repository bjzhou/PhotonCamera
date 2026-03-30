.class public final Lfxm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lfsh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lfxl;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    sput-object v0, Lfxm;->a:Lfsh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lfxl;

    nop

    nop

    goto/32 :goto_0

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
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Lfsh;ZI)Lokp;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    nop

    :goto_3
    new-instance p1, Lokp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p0, p2, p3, p4}, Lokp;-><init>(Ljava/lang/String;Lfsh;ZI)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
