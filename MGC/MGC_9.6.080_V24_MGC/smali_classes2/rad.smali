.class public final Lrad;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    sput-object v0, Lrad;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

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

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "UTF-8"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "ISO-8859-1"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "US-ASCII"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
