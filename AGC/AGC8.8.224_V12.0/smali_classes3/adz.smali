.class public final Ladz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llpg;

.field public static final b:Llpg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llpg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llpg;-><init>(Z)V

    sput-object v0, Ladz;->a:Llpg;

    new-instance v0, Llpg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Llpg;-><init>(Z)V

    sput-object v0, Ladz;->b:Llpg;

    return-void
.end method
