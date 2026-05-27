.class public final Lksp;
.super Ljava/lang/Object;

# interfaces
.implements Lkso;


# static fields
.field public static final a:Lksp;


# instance fields
.field public final b:Lksl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lksp;

    sget-object v1, Lksn;->a:Lksn;

    invoke-direct {v0, v1}, Lksp;-><init>(Lksl;)V

    sput-object v0, Lksp;->a:Lksp;

    return-void
.end method

.method private constructor <init>(Lksl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lksp;->b:Lksl;

    return-void
.end method
