.class public final Leds;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ledu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ledu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ledu;-><init>(I)V

    sput-object v0, Leds;->a:Ledu;

    return-void
.end method
