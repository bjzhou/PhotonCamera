.class public Landroidx/lifecycle/LegacySavedStateHandleController$1;
.super Ljava/lang/Object;

# interfaces
.implements Lakt;


# instance fields
.field final synthetic a:Laks;

.field final synthetic b:Laqm;


# direct methods
.method public constructor <init>(Laks;Laqm;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->a:Laks;

    iput-object p2, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->b:Laqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 0

    sget-object p1, Lakq;->ON_START:Lakq;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->a:Laks;

    invoke-virtual {p1, p0}, Laks;->c(Laku;)V

    iget-object p1, p0, Landroidx/lifecycle/LegacySavedStateHandleController$1;->b:Laqm;

    const-class p2, Lako;

    invoke-virtual {p1, p2}, Laqm;->c(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
