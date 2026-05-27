.class public final Lkrx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkrx;


# instance fields
.field public final b:Lkso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkrx;

    invoke-direct {v0}, Lkrx;-><init>()V

    sput-object v0, Lkrx;->a:Lkrx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lksp;->a:Lksp;

    iput-object v0, p0, Lkrx;->b:Lkso;

    return-void
.end method
