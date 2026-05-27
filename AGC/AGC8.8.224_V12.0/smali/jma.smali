.class public final Ljma;
.super Ljava/lang/Object;


# static fields
.field public static volatile a:Ljmj;

.field private static final b:Ljmj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljmj;

    invoke-direct {v0}, Ljmj;-><init>()V

    sput-object v0, Ljma;->b:Ljmj;

    sput-object v0, Ljma;->a:Ljmj;

    return-void
.end method
