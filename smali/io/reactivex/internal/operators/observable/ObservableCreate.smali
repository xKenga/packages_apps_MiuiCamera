.class public final Lio/reactivex/internal/operators/observable/ObservableCreate;
.super Lio/reactivex/Observable;
.source "ObservableCreate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final source:Lio/reactivex/ObservableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableOnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableOnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableOnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate;, "Lio/reactivex/internal/operators/observable/ObservableCreate<TT;>;"
    .local p1, "source":Lio/reactivex/ObservableOnSubscribe;, "Lio/reactivex/ObservableOnSubscribe<TT;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 31
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCreate;->source:Lio/reactivex/ObservableOnSubscribe;

    .line 32
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCreate;, "Lio/reactivex/internal/operators/observable/ObservableCreate<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;-><init>(Lio/reactivex/Observer;)V

    .line 37
    .local v1, "parent":Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;, "Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter<TT;>;"
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 40
    :try_start_0
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableCreate;->source:Lio/reactivex/ObservableOnSubscribe;

    invoke-interface {v2, v1}, Lio/reactivex/ObservableOnSubscribe;->subscribe(Lio/reactivex/ObservableEmitter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 43
    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate$CreateEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
