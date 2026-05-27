.class public final Ljdd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljdd;


# instance fields
.field public final b:Landroid/os/Looper;

.field public final c:Ljfc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljdc;

    invoke-direct {v0}, Ljdc;-><init>()V

    invoke-virtual {v0}, Ljdc;->a()Ljdd;

    move-result-object v0

    sput-object v0, Ljdd;->a:Ljdd;

    return-void
.end method

.method public constructor <init>(Ljfc;Landroid/os/Looper;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljdd;->c:Ljfc;

    iput-object p2, p0, Ljdd;->b:Landroid/os/Looper;

    return-void
.end method
