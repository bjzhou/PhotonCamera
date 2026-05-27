.class public final Lksa;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkrx;

.field public static final b:Lksb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkrx;->a:Lkrx;

    sput-object v0, Lksa;->a:Lkrx;

    new-instance v0, Lksc;

    invoke-direct {v0}, Lksc;-><init>()V

    sput-object v0, Lksa;->b:Lksb;

    return-void
.end method
